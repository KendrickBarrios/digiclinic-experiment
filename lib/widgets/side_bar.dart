import 'package:digiclinic_experiment/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/navigation/app_route.dart';
import 'package:digiclinic_experiment/navigation/sidebar_item.dart';
import 'package:digiclinic_experiment/navigation/sidebar_items.dart';

class SideBar extends StatefulWidget {

  const SideBar({
    super.key,
    required this.currentRoute,
    required this.onRouteSelected
  });

  final AppRoute currentRoute;
  final ValueChanged<AppRoute> onRouteSelected;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {

  bool _isExpanded = false;

  static const double collapsedWidth = 100;
  static const double expandedWidth = 340;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isExpanded = true),
      onExit: (_) => setState(() => _isExpanded = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: _isExpanded ? expandedWidth : collapsedWidth,
        decoration: BoxDecoration(
          color: theme.colorScheme.onSurface,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 60),
              for (final item in sidebarItems)
                _SideBarTile(
                  item: item,
                  expanded: _isExpanded,
                  active: widget.currentRoute == item.route,
                  onTap: () => widget.onRouteSelected(item.route)
                ),
            ],
          )
        ),
      ),
    );
  }
}

class _SideBarTile extends StatefulWidget {

  const _SideBarTile({
    required this.item,
    required this.expanded,
    required this.active,
    required this.onTap
  });

  final SidebarItem item;
  final bool expanded;
  final bool active;
  final VoidCallback onTap;

  @override
  State<_SideBarTile> createState() => _SideBarTileState();
}

class _SideBarTileState extends State<_SideBarTile> {

  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = widget.active
      ? theme.colorScheme.onSecondary
      : _hovered
        ? theme.colorScheme.onSecondary
        : Colors.transparent;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          padding: const EdgeInsets.only(left: 28, top: 32, bottom: 32),
          decoration: BoxDecoration(
            color: bgColor,
          ),
          child: Row(
            children: [
              Icon(widget.item.icon, color: Colors.white, size: 36),
              if (widget.expanded) ...[
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    widget.item.label,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: AppTextStyles.sidebarLabel,
                  ),
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}