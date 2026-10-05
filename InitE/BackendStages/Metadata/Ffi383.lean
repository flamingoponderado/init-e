import InitE.BackendStages.Metadata.Data383
import InitE.BackendStages.Filtered383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis383_eq : ffiLines Filtered383.lines = localFfis383 := by
  with_unfolding_all rfl
theorem ffiStep383 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis383) : LabToTarget.findFfiNames (Filtered383 :: rest) = suffixFfis383 := by
  rw [findFfiNames_section, localFfis383_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep383
end InitE.BackendStages.Metadata
