-- ============================================================================
-- Copyright (C) 2002-2003 Rodolphe Quiedeville <rodolphe@quiedeville.org>
-- Copyright (C) 2016      Laurent Destailleur  <eldy@users.sourceforge.net>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
--
-- ============================================================================

create table llx_c_payment_term
(
  rowid           integer PRIMARY KEY,
  code            varchar(16),
  sortorder       smallint,
  active          tinyint DEFAULT 1,
  libelle         varchar(255),
  libelle_facture text,
  type_cdr        tinyint,    			-- Type of change date reckoning. 1=Payment at end of current month, 2=the Nth of next month
  nbjour          smallint,
  decalage		  smallint,
  module          varchar(32) NULL
)ENGINE=innodb;
