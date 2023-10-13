// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:greengrocer/src/config/custom_colors.dart';

class OrderStatusWidget extends StatelessWidget {
  OrderStatusWidget({
    Key? key,
    required this.status,
    required this.isOverdue,
  }) : super(key: key);

  final String status;
  final bool isOverdue;

  final Map<String, int> allStatus = {
    'pending_payment': 0,
    'refunded': 1,
    'paid': 2,
    'preparing_purchase': 3,
    'shipping': 4,
    'delivered': 5,
  };

  int get currentStatus => allStatus[status]!;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StatusDot(
          isActivy: true,
          title: "Pedido confirmado",
        ),
        const _CustomDivider(),
        if (currentStatus == 1) ...[
          const StatusDot(
            isActivy: true,
            title: "Pix estornado",
            backgroundColor: Colors.orange,
          ),
        ] else if (isOverdue) ...[
          const StatusDot(
            isActivy: true,
            title: "Pagamento pix vencido",
            backgroundColor: Colors.red,
          ),
        ] else ...[
          StatusDot(
            isActivy: currentStatus >= 2,
            title: "Pagamento",
          ),
        const _CustomDivider(),
        StatusDot(
            isActivy: currentStatus >= 3,
            title: "Preparando",
          ),
        const _CustomDivider(),
          StatusDot(
            isActivy: currentStatus >= 4,
            title: "Envio",
          ),
        const _CustomDivider(),
          StatusDot(
            isActivy: currentStatus == 5,
            title: "Entregue",
          ),
        ]
      ],
    );
  }
}

class _CustomDivider extends StatelessWidget {
  const _CustomDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      height: 10,
      width: 2,
      color: Colors.grey.shade500,
    );
  }
}

class StatusDot extends StatelessWidget {
  const StatusDot({
    Key? key,
    required this.isActivy,
    required this.title,
    this.backgroundColor,
  }) : super(key: key);

  final bool isActivy;
  final String title;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: CustomColors.customSwatchColor,
              ),
              color: isActivy
                  ? backgroundColor ?? CustomColors.customSwatchColor
                  : Colors.transparent,
            ),
            child: isActivy
                ? const Icon(
                    Icons.check,
                    size: 13,
                    color: Colors.white,
                  )
                : const SizedBox.shrink(),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
