import 'package:bookly_app/features/home/data/models/book_model/price.dart';
import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
	final String? country;
	final String? saleability;
	final bool? isEbook;
  final ListPrice? listPrice;
	const SaleInfo(  {this.country, this.saleability, this.isEbook,this.listPrice,});

	factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        listPrice: json['listPrice'] == null
						? null
						: ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
				country: json['country'] as String?,
				saleability: json['saleability'] as String?,
				isEbook: json['isEbook'] as bool?,
			);

	Map<String, dynamic> toJson() => {
        'listPrice': listPrice?.toJson(),
				'country': country,
				'saleability': saleability,
				'isEbook': isEbook,
			};

	@override
	List<Object?> get props => [country, saleability, isEbook,listPrice];
}
