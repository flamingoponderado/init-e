import InitE.FrontendStages.Globals.Output96
import InitE.FrontendStages.Declarations.Data96
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate77
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate96_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified96) =
        some globalOutput96 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal96 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified96) := by trivial
theorem globalException96_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified96) = none := by rfl
#print axioms globalTranslate96_eq
end InitE.FrontendStages.Declarations
