import InitE.FrontendStages.Globals.Output766
import InitE.FrontendStages.Declarations.Data766
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate747
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate766_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified766) =
        some globalOutput766 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal766 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified766) := by trivial
theorem globalException766_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified766) = none := by rfl
#print axioms globalTranslate766_eq
end InitE.FrontendStages.Declarations
