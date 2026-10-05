import InitE.FrontendStages.Globals.Output772
import InitE.FrontendStages.Declarations.Data772
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate753
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate772_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified772) =
        some globalOutput772 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal772 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified772) := by trivial
theorem globalException772_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified772) = none := by rfl
#print axioms globalTranslate772_eq
end InitE.FrontendStages.Declarations
