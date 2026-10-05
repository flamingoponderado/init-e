import InitE.FrontendStages.Globals.Output274
import InitE.FrontendStages.Declarations.Data274
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate258
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate274_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified274) =
        some globalOutput274 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal274 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified274) := by trivial
theorem globalException274_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified274) = none := by rfl
#print axioms globalTranslate274_eq
end InitE.FrontendStages.Declarations
