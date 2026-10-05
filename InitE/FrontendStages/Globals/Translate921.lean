import InitE.FrontendStages.Globals.Output921
import InitE.FrontendStages.Declarations.Data921
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate905
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate921_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified921) =
        some globalOutput921 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal921 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified921) := by trivial
theorem globalException921_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified921) = none := by rfl
#print axioms globalTranslate921_eq
end InitE.FrontendStages.Declarations
