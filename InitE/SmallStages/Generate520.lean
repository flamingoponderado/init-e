import Tools.GenSmallStages
import InitE.SmallStages.Oracles520
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 520 InitE.WordStages.source520.2.1 InitE.WordStages.source520.2.2 InitE.SmallStages.Oracles520.oracle520
