import InitE.FrontendStages.Globals.Output692
import InitE.FrontendStages.Declarations.Data692
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate676
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate692_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified692) =
        some globalOutput692 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal692 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified692) := by trivial
theorem globalException692_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified692) = none := by rfl
#print axioms globalTranslate692_eq
end InitE.FrontendStages.Declarations
