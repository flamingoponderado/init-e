import InitE.FrontendStages.Globals.Output562
import InitE.FrontendStages.Declarations.Data562
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate546
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate562_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified562) =
        some globalOutput562 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal562 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified562) := by trivial
theorem globalException562_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified562) = none := by rfl
#print axioms globalTranslate562_eq
end InitE.FrontendStages.Declarations
