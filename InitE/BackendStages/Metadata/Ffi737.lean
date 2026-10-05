import InitE.BackendStages.Metadata.Data737
import InitE.BackendStages.Filtered737
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis737_eq : ffiLines Filtered737.lines = localFfis737 := by
  with_unfolding_all rfl
theorem ffiStep737 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis737) : LabToTarget.findFfiNames (Filtered737 :: rest) = suffixFfis737 := by
  rw [findFfiNames_section, localFfis737_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep737
end InitE.BackendStages.Metadata
