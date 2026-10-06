import InitE.FrontendStages.Globals.Output739
import InitE.FrontendStages.Declarations.Data739
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate717
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate739_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified739) =
        some globalOutput739 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal739 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified739) := by trivial
theorem globalException739_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified739) = none := by rfl
#print axioms globalTranslate739_eq
end InitE.FrontendStages.Declarations
