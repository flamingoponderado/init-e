import InitE.FrontendStages.Globals.Output870
import InitE.FrontendStages.Declarations.Data870
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate854
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate870_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified870) =
        some globalOutput870 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal870 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified870) := by trivial
theorem globalException870_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified870) = none := by rfl
#print axioms globalTranslate870_eq
end InitE.FrontendStages.Declarations
