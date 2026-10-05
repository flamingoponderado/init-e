import InitE.BackendStages.BytesChunkData96_111
import InitE.BackendStages.FinalChunk96_111
import InitE.BackendStages.Bytes96
import InitE.BackendStages.Bytes97
import InitE.BackendStages.Bytes98
import InitE.BackendStages.Bytes99
import InitE.BackendStages.Bytes100
import InitE.BackendStages.Bytes101
import InitE.BackendStages.Bytes102
import InitE.BackendStages.Bytes103
import InitE.BackendStages.Bytes104
import InitE.BackendStages.Bytes105
import InitE.BackendStages.Bytes106
import InitE.BackendStages.Bytes107
import InitE.BackendStages.Bytes108
import InitE.BackendStages.Bytes109
import InitE.BackendStages.Bytes110
import InitE.BackendStages.Bytes111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.BytesChunk96_111
theorem compiled_eq : LabToTarget.progToBytes FinalChunk96_111.padded = BytesChunkData96_111.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded96.lines.map LabToTarget.lineBytes).flatten, (Padded97.lines.map LabToTarget.lineBytes).flatten, (Padded98.lines.map LabToTarget.lineBytes).flatten, (Padded99.lines.map LabToTarget.lineBytes).flatten, (Padded100.lines.map LabToTarget.lineBytes).flatten, (Padded101.lines.map LabToTarget.lineBytes).flatten, (Padded102.lines.map LabToTarget.lineBytes).flatten, (Padded103.lines.map LabToTarget.lineBytes).flatten, (Padded104.lines.map LabToTarget.lineBytes).flatten, (Padded105.lines.map LabToTarget.lineBytes).flatten, (Padded106.lines.map LabToTarget.lineBytes).flatten, (Padded107.lines.map LabToTarget.lineBytes).flatten, (Padded108.lines.map LabToTarget.lineBytes).flatten, (Padded109.lines.map LabToTarget.lineBytes).flatten, (Padded110.lines.map LabToTarget.lineBytes).flatten, (Padded111.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData96_111.bytes
  rw [sectionBytes96_eq, sectionBytes97_eq, sectionBytes98_eq, sectionBytes99_eq, sectionBytes100_eq, sectionBytes101_eq, sectionBytes102_eq, sectionBytes103_eq, sectionBytes104_eq, sectionBytes105_eq, sectionBytes106_eq, sectionBytes107_eq, sectionBytes108_eq, sectionBytes109_eq, sectionBytes110_eq, sectionBytes111_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.BytesChunk96_111
