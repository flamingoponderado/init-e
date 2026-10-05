import InitE.FrontendStages.Globals.Output219
import InitE.FrontendStages.Declarations.Data219
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate203
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate219_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified219) =
        some globalOutput219 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal219 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified219) := by trivial
theorem globalException219_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified219) = none := by rfl
#print axioms globalTranslate219_eq
end InitE.FrontendStages.Declarations
