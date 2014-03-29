/*
 * Copyright 2014 gamars.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.searchbox.framework.convert;

import org.springframework.core.convert.converter.Converter;

import com.searchbox.core.ref.Sort;
import com.searchbox.core.search.sort.FieldSort;
import com.searchbox.core.search.sort.FieldSort.Condition;

/**
 * 
 * @author gamars
 */
@SearchConverter
public class FieldSortConditionConverter implements
    Converter<String, Condition> {

  @Override
  public Condition convert(String source) {
    String cfield = source.split(" ")[0];
    String sort = source.split(" ")[1];

    if (sort.equalsIgnoreCase(Sort.DESC.toString())) {
      return new FieldSort.Condition(cfield, Sort.DESC);
    } else {
      return new FieldSort.Condition(cfield, Sort.ASC);
    }
  }

}
