import InitE.FrontendStages.Globals.Output168
import InitE.FrontendStages.Declarations.Data168
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate152
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate168_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified168) =
        some globalOutput168 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal168 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified168) := by trivial
theorem globalException168_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified168) = none := by rfl
#print axioms globalTranslate168_eq
end InitE.FrontendStages.Declarations
