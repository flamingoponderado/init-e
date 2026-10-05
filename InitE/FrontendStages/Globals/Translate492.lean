import InitE.FrontendStages.Globals.Output492
import InitE.FrontendStages.Declarations.Data492
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate476
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate492_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified492) =
        some globalOutput492 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal492 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified492) := by trivial
theorem globalException492_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified492) = none := by rfl
#print axioms globalTranslate492_eq
end InitE.FrontendStages.Declarations
