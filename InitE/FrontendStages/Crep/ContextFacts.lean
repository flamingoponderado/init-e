import InitE.FrontendStages.Pass2
import InitE.FrontendStages.Crep.Context

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

/-! Metadata certificates inspect names, parameter/return shapes and exceptions.
They never need to evaluate the program bodies. -/
attribute [local cbv_opaque] Flapjack.Pancake.PanLang.progToHOL
attribute [local cbv_opaque] Flapjack.Pancake.PanLang.expToHOL

namespace InitE.FrontendStages.Crep
open Flapjack Flapjack.Pancake.PanLang

theorem functionEntries_eq :
    makeFuncsEntriesHOL (functionsHOL pass2) = makeFuncsEntriesHOL functionSkeleton := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl

theorem exceptionEntries_eq :
    getEidsEntriesHOL pass2 = getEidsEntriesHOL exceptionSkeleton := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl

theorem functionMap_eq : makeFuncsExactHOL (functionsHOL pass2) = functionMap :=
  InitE.CrepComputation.makeFuncs_congr _ _ functionEntries_eq

theorem exceptionMap_eq : getEidsFromDeclsHOL pass2 = exceptionMap :=
  InitE.CrepComputation.getEids_congr _ _ exceptionEntries_eq

theorem noInline_eq : pass2.filter inlinableHOL = [] := by
  conv => lhs; cbv
  try rfl

#print axioms functionMap_eq
#print axioms exceptionMap_eq
#print axioms noInline_eq
end InitE.FrontendStages.Crep
