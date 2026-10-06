import InitE.FrontendStages.Globals.Output925
import InitE.FrontendStages.Declarations.Data925
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate909
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate925_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified925) =
        some globalOutput925 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal925 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified925) := by trivial
theorem globalException925_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified925) = none := by rfl
#print axioms globalTranslate925_eq
end InitE.FrontendStages.Declarations
