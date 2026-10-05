import InitE.BackendStages.Metadata.Data272
import InitE.BackendStages.Filtered272
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis272_eq : ffiLines Filtered272.lines = localFfis272 := by
  with_unfolding_all rfl
theorem ffiStep272 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis272) : LabToTarget.findFfiNames (Filtered272 :: rest) = suffixFfis272 := by
  rw [findFfiNames_section, localFfis272_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep272
end InitE.BackendStages.Metadata
