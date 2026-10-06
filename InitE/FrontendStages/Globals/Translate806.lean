import InitE.FrontendStages.Globals.Output806
import InitE.FrontendStages.Declarations.Data806
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate787
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate806_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified806) =
        some globalOutput806 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal806 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified806) := by trivial
theorem globalException806_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified806) = none := by rfl
#print axioms globalTranslate806_eq
end InitE.FrontendStages.Declarations
