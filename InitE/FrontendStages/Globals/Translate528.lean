import InitE.FrontendStages.Globals.Output528
import InitE.FrontendStages.Declarations.Data528
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate512
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate528_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified528) =
        some globalOutput528 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal528 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified528) := by trivial
theorem globalException528_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified528) = none := by rfl
#print axioms globalTranslate528_eq
end InitE.FrontendStages.Declarations
