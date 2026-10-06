import InitE.FrontendStages.Globals.Output750
import InitE.FrontendStages.Declarations.Data750
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate729
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate750_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified750) =
        some globalOutput750 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal750 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified750) := by trivial
theorem globalException750_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified750) = none := by rfl
#print axioms globalTranslate750_eq
end InitE.FrontendStages.Declarations
