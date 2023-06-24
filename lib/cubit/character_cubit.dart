import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:valoyousefhajeb/data/model/ability_line.dart';
import 'package:valoyousefhajeb/data/model/role_line.dart';
import 'package:valoyousefhajeb/data/model/voice_line.dart';

import '../data/model/charachter_model.dart';
import '../data/repo/repo_layer.dart';
// import 'package:equatable/equatable.dart';
//this initialze
part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(CharacterInitial());
  Future<void> getCharacher() async {
    try {
      emit(CharacterLoading());
      final listCharcher = await requestCharacher();
      emit(CharacterLoaded(listCharacher: listCharcher));
    } catch (e) {
      emit(CharacterError(message: e.toString()));
    }
  }

  Future<List<CharachterModle>> requestCharacher() async {
    try {
      final response = await RepoLayer().getAgent();
      if (response == null) {
        return [];
      }

      final responseDecode = json.decode(response.body);
      final data = responseDecode['data'] as List<dynamic>;
      final dataList = data
          .map((dynamic e) {
            // de serl

            final role = e['role'] ?? {};

            // role  Information
            final roleData = Role(
                uuid: role['uuid'],
                // assetPath: role['assetPath'],
                description: role['description'],
                displayIcon: role['displayIcon'],
                displayName: role['displayName']);
            final ability = e['abilities'] as List<dynamic>;
            final abilityInfo = ability.map((e) {
              return Ability(
                  description: e['description'],
                  displayIcon: e['displayIcon'],
                  displayName: e['displayName']);
            }).toList();
            abilityInfo
                .retainWhere((element) => element.displayIcon!.isNotEmpty);
//VoceLine  from Cahracher
            final voiceLine = e['voiceLine'] as List<dynamic>;
            final voiceInfo = VoiceLine(
              voiceLine: e[0]['wave'],
            );

            return CharachterModle(
                description: e['description'] ?? '',
                displayIcon: e['displayIcon'] ?? "",
                fullPortrait: e['displayIcon'] ?? '',
                abilities: abilityInfo,
                voiceLine: voiceInfo,
                displayName: e['displayName'],
                role: roleData);
          })
          .toSet()
          .toList();
      dataList.retainWhere((element) => element.fullPortrait!.isNotEmpty);
      return dataList;
    } catch (e) {
      e.toString();
      throw Exception(e.toString());
    }
  }
}
