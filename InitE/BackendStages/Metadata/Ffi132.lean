import InitE.BackendStages.Metadata.Data132
import InitE.BackendStages.Filtered132
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis132_eq : ffiLines Filtered132.lines = localFfis132 := by
  with_unfolding_all rfl
theorem ffiStep132 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis132) : LabToTarget.findFfiNames (Filtered132 :: rest) = suffixFfis132 := by
  rw [findFfiNames_section, localFfis132_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep132
end InitE.BackendStages.Metadata
