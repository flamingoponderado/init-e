import InitE.FrontendStages.Globals.Output755
import InitE.FrontendStages.Declarations.Data755
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate739
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate755_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified755) =
        some globalOutput755 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal755 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified755) := by trivial
theorem globalException755_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified755) = none := by rfl
#print axioms globalTranslate755_eq
end InitE.FrontendStages.Declarations
