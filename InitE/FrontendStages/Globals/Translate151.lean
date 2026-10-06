import InitE.FrontendStages.Globals.Output151
import InitE.FrontendStages.Declarations.Data151
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate134
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate151_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified151) =
        some globalOutput151 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal151 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified151) := by trivial
theorem globalException151_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified151) = none := by rfl
#print axioms globalTranslate151_eq
end InitE.FrontendStages.Declarations
