import { request } from '@/utils/request';

const Api = {
  PurchaseList: '/get-purchase-list.json',
  ProjectList: '/get-project-list.json',
};

export function getPurchaseList() {
  return request.get({
    url: Api.PurchaseList,
  });
}

export function getProjectList() {
  return request.get({
    url: Api.ProjectList,
  });
}
