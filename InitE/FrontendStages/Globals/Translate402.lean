import InitE.FrontendStages.Globals.Output402
import InitE.FrontendStages.Declarations.Data402
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate386
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate402_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified402) =
        some globalOutput402 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal402 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified402) := by trivial
theorem globalException402_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified402) = none := by rfl
#print axioms globalTranslate402_eq
end InitE.FrontendStages.Declarations
