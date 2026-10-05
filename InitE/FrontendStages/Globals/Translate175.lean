import InitE.FrontendStages.Globals.Output175
import InitE.FrontendStages.Declarations.Data175
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate159
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate175_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified175) =
        some globalOutput175 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal175 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified175) := by trivial
theorem globalException175_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified175) = none := by rfl
#print axioms globalTranslate175_eq
end InitE.FrontendStages.Declarations
