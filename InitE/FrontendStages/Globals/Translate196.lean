import InitE.FrontendStages.Globals.Output196
import InitE.FrontendStages.Declarations.Data196
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate176
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate196_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified196) =
        some globalOutput196 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal196 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified196) := by trivial
theorem globalException196_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified196) = none := by rfl
#print axioms globalTranslate196_eq
end InitE.FrontendStages.Declarations
