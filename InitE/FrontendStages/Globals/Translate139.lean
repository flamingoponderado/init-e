import InitE.FrontendStages.Globals.Output139
import InitE.FrontendStages.Declarations.Data139
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate123
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate139_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified139) =
        some globalOutput139 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal139 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified139) := by trivial
theorem globalException139_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified139) = none := by rfl
#print axioms globalTranslate139_eq
end InitE.FrontendStages.Declarations
