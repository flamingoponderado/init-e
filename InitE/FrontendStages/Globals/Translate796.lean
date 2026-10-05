import InitE.FrontendStages.Globals.Output796
import InitE.FrontendStages.Declarations.Data796
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate777
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate796_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified796) =
        some globalOutput796 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal796 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified796) := by trivial
theorem globalException796_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified796) = none := by rfl
#print axioms globalTranslate796_eq
end InitE.FrontendStages.Declarations
