import InitE.FrontendStages.Globals.Output754
import InitE.FrontendStages.Declarations.Data754
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate738
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate754_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified754) =
        some globalOutput754 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal754 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified754) := by trivial
theorem globalException754_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified754) = none := by rfl
#print axioms globalTranslate754_eq
end InitE.FrontendStages.Declarations
