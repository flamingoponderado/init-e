import InitE.FrontendStages.Globals.Output275
import InitE.FrontendStages.Declarations.Data275
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate259
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate275_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified275) =
        some globalOutput275 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal275 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified275) := by trivial
theorem globalException275_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified275) = none := by rfl
#print axioms globalTranslate275_eq
end InitE.FrontendStages.Declarations
