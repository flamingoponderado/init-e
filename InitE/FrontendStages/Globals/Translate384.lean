import InitE.FrontendStages.Globals.Output384
import InitE.FrontendStages.Declarations.Data384
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate368
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate384_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified384) =
        some globalOutput384 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal384 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified384) := by trivial
theorem globalException384_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified384) = none := by rfl
#print axioms globalTranslate384_eq
end InitE.FrontendStages.Declarations
