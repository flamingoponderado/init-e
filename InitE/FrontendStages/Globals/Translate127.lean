import InitE.FrontendStages.Globals.Output127
import InitE.FrontendStages.Declarations.Data127
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate111
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate127_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified127) =
        some globalOutput127 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal127 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified127) := by trivial
theorem globalException127_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified127) = none := by rfl
#print axioms globalTranslate127_eq
end InitE.FrontendStages.Declarations
