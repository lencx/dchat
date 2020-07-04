/**
 * @author: lencx
 * @create_at: Jul 04, 2020
 */

import { lazy } from 'react';
import { RouteOption } from '/@route/types';

export const CONFIG = {
  // redux: models/global
  // authenticated: false,
  authRedirect: '/login',
};

const routes: RouteOption[] = [
  {
    path: '/',
    component: lazy(() => import('./example/Layout')),
    routes: [
      {
        path: '/login',
        component: lazy(() => import('./example/Login')),
      },
      {
        path: '/signout',
        component: lazy(() => import('./example/SignOut')),
      },
      {
        path: '/protected',
        private: true,
        component: lazy(() => import('./example/Protected')),
      },
    ],
  },
]

export default routes;