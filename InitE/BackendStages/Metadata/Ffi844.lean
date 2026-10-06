import InitE.BackendStages.Metadata.Data844
import InitE.BackendStages.Filtered844
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis844_eq : ffiLines Filtered844.lines = localFfis844 := by
  with_unfolding_all rfl
theorem ffiStep844 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis844) : LabToTarget.findFfiNames (Filtered844 :: rest) = suffixFfis844 := by
  rw [findFfiNames_section, localFfis844_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep844
end InitE.BackendStages.Metadata
