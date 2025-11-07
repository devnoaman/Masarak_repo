import 'package:freezed_annotation/freezed_annotation.dart';

part 'manifest_doc.freezed.dart';
part 'manifest_doc.g.dart';

@freezed
abstract class ManifestDoc with _$ManifestDoc {
  factory ManifestDoc({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    int? docstatus,
    int? idx,
    @JsonKey(name: 'maifest_date') String? maifestDate,
    String? ship,
    @JsonKey(name: 'ship_agent') String? shipAgent,
    @JsonKey(name: 'imo_number') String? imoNumber,
    @JsonKey(name: 'weight_grt') int? weightGrt,
    @JsonKey(name: 'voyage_number') String? voyageNumber,
    @JsonKey(name: 'port_name') String? portName,
    @JsonKey(name: 'cargo_type') String? cargoType,
    String? berth,
    @JsonKey(name: 'berth_number') String? berthNumber,
    @JsonKey(name: 'berthing_date') String? berthingDate,
    String? doctype,
  }) = _ManifestDoc;

  factory ManifestDoc.fromJson(Map<String, dynamic> json) =>
      _$ManifestDocFromJson(json);
}
