import InitE.FrontendStages.Globals.Output319
import InitE.FrontendStages.Declarations.Data319
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate303
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate319_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified319) =
        some globalOutput319 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal319 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified319) := by trivial
theorem globalException319_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified319) = none := by rfl
#print axioms globalTranslate319_eq
end InitE.FrontendStages.Declarations
