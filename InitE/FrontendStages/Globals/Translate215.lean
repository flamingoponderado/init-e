import InitE.FrontendStages.Globals.Output215
import InitE.FrontendStages.Declarations.Data215
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate199
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate215_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified215) =
        some globalOutput215 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal215 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified215) := by trivial
theorem globalException215_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified215) = none := by rfl
#print axioms globalTranslate215_eq
end InitE.FrontendStages.Declarations
