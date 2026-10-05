import InitE.FrontendStages.Globals.Output179
import InitE.FrontendStages.Declarations.Data179
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate163
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate179_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified179) =
        some globalOutput179 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal179 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified179) := by trivial
theorem globalException179_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified179) = none := by rfl
#print axioms globalTranslate179_eq
end InitE.FrontendStages.Declarations
