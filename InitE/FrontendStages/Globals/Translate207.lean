import InitE.FrontendStages.Globals.Output207
import InitE.FrontendStages.Declarations.Data207
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate187
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate207_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified207) =
        some globalOutput207 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal207 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified207) := by trivial
theorem globalException207_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified207) = none := by rfl
#print axioms globalTranslate207_eq
end InitE.FrontendStages.Declarations
