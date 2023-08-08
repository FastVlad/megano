from shops.models import Order


def last_order_request(user):
    """Возвращает последний заказ если он есть"""
    order = Order.objects.filter(custom_user=user).order_by("-data")
    if order:
        return order[0]
    return None
