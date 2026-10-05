import InitE.FrontendStages.Globals.Output837
import InitE.FrontendStages.Declarations.Data837
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate821
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate837_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified837) =
        some globalOutput837 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal837 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified837) := by trivial
theorem globalException837_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified837) = none := by rfl
#print axioms globalTranslate837_eq
end InitE.FrontendStages.Declarations
