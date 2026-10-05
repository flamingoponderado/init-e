import InitE.FrontendStages.Globals.Output693
import InitE.FrontendStages.Declarations.Data693
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate677
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate693_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified693) =
        some globalOutput693 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal693 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified693) := by trivial
theorem globalException693_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified693) = none := by rfl
#print axioms globalTranslate693_eq
end InitE.FrontendStages.Declarations
