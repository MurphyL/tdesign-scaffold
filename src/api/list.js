import { request } from '@/utils/request';

const Api = {
  BaseList: '/get-list.json',
  CardList: '/get-card-list.json',
};

export function getList() {
  return request.get({
    url: Api.BaseList,
  });
}

export function getCardList() {
  return request.get({
    url: Api.CardList,
  });
}
