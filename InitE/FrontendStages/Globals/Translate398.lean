import InitE.FrontendStages.Globals.Output398
import InitE.FrontendStages.Declarations.Data398
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate382
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate398_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified398) =
        some globalOutput398 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal398 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified398) := by trivial
theorem globalException398_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified398) = none := by rfl
#print axioms globalTranslate398_eq
end InitE.FrontendStages.Declarations
