import Tools.GenSmallStages
import InitE.SmallStages.Oracles642
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 642 InitE.WordStages.source642.2.1 InitE.WordStages.source642.2.2 InitE.SmallStages.Oracles642.oracle642
