import InitE.FrontendStages.Globals.Output856
import InitE.FrontendStages.Declarations.Data856
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate839
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate856_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified856) =
        some globalOutput856 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal856 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified856) := by trivial
theorem globalException856_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified856) = none := by rfl
#print axioms globalTranslate856_eq
end InitE.FrontendStages.Declarations
