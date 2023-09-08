import { request } from '@/utils/request';

const Api = {
  MenuList: '/get-menu-list.json',
};

export function getMenuList() {
  return request.get({
    url: Api.MenuList,
  });
}
