import InitE.BackendStages.Metadata.Data355
import InitE.BackendStages.Filtered355
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis355_eq : ffiLines Filtered355.lines = localFfis355 := by
  with_unfolding_all rfl
theorem ffiStep355 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis355) : LabToTarget.findFfiNames (Filtered355 :: rest) = suffixFfis355 := by
  rw [findFfiNames_section, localFfis355_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep355
end InitE.BackendStages.Metadata
