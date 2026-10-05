import InitE.FrontendStages.Globals.Output640
import InitE.FrontendStages.Declarations.Data640
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate619
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate640_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified640) =
        some globalOutput640 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal640 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified640) := by trivial
theorem globalException640_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified640) = none := by rfl
#print axioms globalTranslate640_eq
end InitE.FrontendStages.Declarations
