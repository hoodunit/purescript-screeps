#!/usr/bin/env bash

ls | xargs sed -i -e 's/import Screeps.Eff (.*)//'
ls | xargs sed -i -e 's/Eff/Effect/'
ls | xargs sed -i -e 's/(Eff)/(Effect)/'
ls | xargs sed -i -e 's/Effect \((.*)\)/Effect/'
ls | xargs sed -i -e 's/Effectect/Effect/'
ls | xargs sed -i -e 's/import Control.Monad.Effect/import Effect/'
