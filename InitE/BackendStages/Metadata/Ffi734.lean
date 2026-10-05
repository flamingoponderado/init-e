import InitE.BackendStages.Metadata.Data734
import InitE.BackendStages.Filtered734
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis734_eq : ffiLines Filtered734.lines = localFfis734 := by
  with_unfolding_all rfl
theorem ffiStep734 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis734) : LabToTarget.findFfiNames (Filtered734 :: rest) = suffixFfis734 := by
  rw [findFfiNames_section, localFfis734_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep734
end InitE.BackendStages.Metadata
